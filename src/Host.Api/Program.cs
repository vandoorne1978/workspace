using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Feature.Api.Controllers;

namespace Host.Api;

public class Program
{
    public static void Main(string[] args)
    {
        var builder = WebApplication.CreateBuilder(args);

        builder.Services
            .AddControllers()
			.AddApplicationPart(typeof(FeatureController).Assembly);	/// Swap with appropriate implementation.

		var allowed = builder.Configuration.GetSection("Cors:AllowedOrigins").Get<string[]>() ?? Array.Empty<string>();
		var env = builder.Environment;
		
		builder.Configuration
			.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
			.AddJsonFile($"appsettings.{env.EnvironmentName}.json", optional: true)
			.AddEnvironmentVariables();
		
		builder.Services.AddCors(options =>
		{
			options.AddPolicy("spa", policy =>
			{
				policy.WithOrigins(allowed)
					.AllowAnyHeader()
					.AllowAnyMethod()
					.AllowCredentials();
			});
		});
		
		builder.Services.AddHttpContextAccessor();  /// Allows access to HTTP requests.
		//	builder.Services.AddScoped<IFeatureService, FeatureService>();    /// Swap with appropriate implementation.
		
        // Swagger services
        builder.Services.AddEndpointsApiExplorer();
        builder.Services.AddSwaggerGen();

        var app = builder.Build();

        if (app.Environment.IsDevelopment())
        {
            app.UseSwagger();
            app.UseSwaggerUI();
        }

        //	app.UseHttpsRedirection();
		app.UseCors("spa");
        app.MapControllers();
        app.Run();
    }
}

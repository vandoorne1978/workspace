using Microsoft.AspNetCore.Mvc;
//	using Feature.Contracts;

namespace Feature.Api.Controllers;

[ApiController]
[Route("[controller]")]
public class FeatureController(
	//	make _variable camel case
	//	IFeatureService _FeatureService: FeatureService
	) : ControllerBase
{
    // GET: /api/Feature/ping
    [HttpGet("ping")]
    public IActionResult Ping() => Ok(new { feature = "Feature", status = "ok" });
}

using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebApplicationFYP.Startup))]
namespace WebApplicationFYP
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

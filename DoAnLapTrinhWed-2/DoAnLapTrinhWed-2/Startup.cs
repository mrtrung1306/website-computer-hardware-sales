using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DoAnLapTrinhWed_2.Startup))]
namespace DoAnLapTrinhWed_2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

using GoldenTicket.Data;
using System.Reflection;

var builder = WebApplication.CreateBuilder(args);
ConfigurationManager configuration = builder.Configuration;
var enableSwagger = configuration["EnableSwagger"].ToLower();


// Add services to the container.
builder.Services.AddRazorPages();
builder.Services.AddDbContext<GoldenTicketContext>();
builder.Services.AddControllers();

if (enableSwagger == "true")
{
    builder.Services.AddSwaggerGen(c =>
    {
        //c.OperationFilter<HeadersFilter>();
        c.CustomSchemaIds(type => type.ToString());
        c.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory,
            $"{Assembly.GetExecutingAssembly().GetName().Name}.xml"));
    });
}
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

if (enableSwagger == "true")
{
    app.UseSwagger();
    app.UseSwaggerUI(c =>
    {
        //Collapse Controllers in Swagger Document
        c.DocExpansion(docExpansion: Swashbuckle.AspNetCore.SwaggerUI.DocExpansion.None);
        c.SwaggerEndpoint("../swagger/v1/swagger.json", "MIRS Api");
    });
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapRazorPages();

app.UseAuthentication();

app.MapControllers();

app.Run();

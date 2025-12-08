using Datosphere.Abstractions;
using Datosphere.Domain.Models.Member;
using Datosphere.Domain.Models.Member.Body;
using Datosphere.Domain.OptionTypes.Member.Body;
using Microsoft.Extensions.Logging;


namespace Datosphere.Services;


public class MemberProfileRepository : IMemberProfileRepository
{
    private readonly ILogger<MemberProfileRepository> _logger;


    public MemberProfileRepository(ILogger<MemberProfileRepository> logger)
    {
        _logger = logger;
    }


    public async Task<MemberProfile?> GetMemberProfile(string username)
    {
        var profile = await CreateDummyProfile();
        return profile;
    }


    public async Task<MemberProfile?> GetMemberProfile(Guid guid)
    {
        var profile = await CreateDummyProfile();
        return profile;
    }


    private Task<MemberProfile> CreateDummyProfile()
    {
        _logger.LogDebug("Creating Dummy Profile");

        // Generate some dummy basic info
        var info = new MemberBasicInfo
        {
            FirstName = "Alexis",
            Nickname = "Lexi",
            MiddleNames = "Marie",
            LastName = "Star",
            ClaimToFame = "Famous for being fabulous",
            Bio =
                "Alexis 'Lexi' Marie Star. A singer and an actress known for her dynamic performances and captivating presence. Will steal your heart and blow your mind, whether she's on stage holding a microphone in front of her luscious lips or on her knees in front of you, holding your ...",
        };


        var femaleAttributes = new AttributesFemale
        {
            CupSize = "DD",
            BustSizeCm = 70,
            WaistSizeCm = 45,
            HipSizeCm = 75,
            BreastImplants = true
        };


        var maleAttributes = new AttributesMale
        {
            Foreskin = ForeskinType.Circumcised,
            CockLengthCm = 25,
            CockGirthCm = 22,
            Enlarged = false,
            EjaculationAmount = EjaculationAmount.Legendary,
            EjaculationType = EjaculationType.ThickAndCreamy,
            Multishooter = true
        };


        var transAttributes = new AttributesTrans
        {
            M2F = true,
            BreastImplants = true
        };


        // Generate Some MemberBodyAttributes
        var body = new MemberBodyAttributes
        {
            HeightCm = 155,
            WeightKg = 40,
            Build = BodyBuild.Athletic,
            HairColor = HairColor.Red,
            HairLength = HairLength.AssLength,
            GroomingLegs = Grooming.Waxed,
            GroomingBikini = GroomingBikini.TidyBikiniLine,
            GroomingFullbody = Grooming.Waxed,
            GroomingAnus = Grooming.Lasered,
            AnusBleached = true
        };


        // Generate some dummy MemberAttributes
        var attributes = new MemberAttributes
        {
            Gender = 1,
            Sex = BioSex.Male,
            SexChangeOp = false,
            BodyAttributes =  body,
            FemaleAttributes = femaleAttributes,
            TransAttributes = transAttributes,
            MaleAttributes = maleAttributes
        };


        var profile = new MemberProfile
        {
            Attributes = attributes,
            BasicInfo = new Dictionary<string, MemberBasicInfo>
            {
                { "en_GB", info }
            }
        };

        return Task.FromResult(profile);
    }
}
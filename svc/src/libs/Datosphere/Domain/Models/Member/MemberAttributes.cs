using Datosphere.Domain.Models.Member.Body;
using Datosphere.Domain.OptionTypes.Member.Body;


namespace Datosphere.Domain.Models.Member;


public record MemberAttributes
{
    public int? Gender { get; init; }
    public BioSex? Sex { get; init; }
    public bool? SexChangeOp { get; init; }
    public IReadOnlyList<short>? Ethnicities { get; init; }
    public DateTime? DateOfBirth { get; init; }
    public MemberBodyAttributes BodyAttributes { get; init; } = new();
    public string? PersonalAttributes { get; init; }
    public string? SexualOrientations { get; init; }
    public bool? Smoker { get; init; }
    public bool? Drinker { get; init; }
    public bool? RecreationalUppers { get; init; }
    public bool? RecreationalDowners { get; init; }
    public decimal? Popularity { get; init; }
    public long MemberId { get; init; }
    public IReadOnlyList<int>? AdditionalGenders { get; init; }
    public IReadOnlyList<int>? PersonalAttributesPrivate { get; init; }
    public IReadOnlyList<int>? RelationshipOrientations { get; init; }
    public IReadOnlyList<int>? SexualOrientationsPrivate { get; init; }
    public AttributesMale? MaleAttributes { get; init; }
    public AttributesFemale? FemaleAttributes { get; init; }
    public AttributesTrans? TransAttributes { get; init; }
}

namespace Datosphere.Domain.OptionTypes.Member.Body;


public enum EjaculationType
{
    None             = 0,    // doesn’t produce any ejaculate
    Clear            = 1,    // thin, watery, almost see-through
    Cloudy           = 2,    // slightly opaque, soft white
    Milky            = 3,    // classic white, thicker than cloudy
    ThickAndCreamy   = 4,    // dense and creamy, sticks together
    Other            = 99    // anything unusual or mixed texture
}

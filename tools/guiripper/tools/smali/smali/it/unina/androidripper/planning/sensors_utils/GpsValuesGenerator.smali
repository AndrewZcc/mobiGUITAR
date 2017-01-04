.class public Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;
.super Ljava/lang/Object;
.source "GpsValuesGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomAltitude()D
    .locals 10

    .prologue
    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .local v4, min:D
    const-wide v0, 0x408f400000000000L

    .line 34
    .local v0, max:D
    const-wide/16 v2, 0x0

    .line 36
    .local v2, mid:D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-double v8, v0, v4

    mul-double/2addr v6, v8

    sub-double/2addr v6, v2

    return-wide v6
.end method

.method public static getRandomLatitude()D
    .locals 10

    .prologue
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .local v4, min:D
    const-wide v0, 0x4066800000000000L

    .line 16
    .local v0, max:D
    const-wide v2, 0x4056800000000000L

    .line 18
    .local v2, mid:D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-double v8, v0, v4

    mul-double/2addr v6, v8

    sub-double/2addr v6, v2

    return-wide v6
.end method

.method public static getRandomLongitude()D
    .locals 10

    .prologue
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .local v4, min:D
    const-wide v0, 0x4076800000000000L

    .line 25
    .local v0, max:D
    const-wide v2, 0x4066800000000000L

    .line 27
    .local v2, mid:D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-double v8, v0, v4

    mul-double/2addr v6, v8

    sub-double/2addr v6, v2

    return-wide v6
.end method

.method public static getRandomNegativeAltitude()D
    .locals 4

    .prologue
    .line 77
    const-wide/high16 v0, -0x4010

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomPositiveAltitude()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static getRandomNegativeLatitude()D
    .locals 4

    .prologue
    .line 67
    const-wide/high16 v0, -0x4010

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomPositiveLatitude()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static getRandomNegativeLongitude()D
    .locals 4

    .prologue
    .line 72
    const-wide/high16 v0, -0x4010

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomPositiveLongitude()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static getRandomPositiveAltitude()D
    .locals 10

    .prologue
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .local v4, min:D
    const-wide v0, 0x408f400000000000L

    .line 60
    .local v0, max:D
    const-wide/16 v2, 0x0

    .line 62
    .local v2, mid:D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-double v8, v0, v4

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public static getRandomPositiveLatitude()D
    .locals 8

    .prologue
    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .local v2, min:D
    const-wide v0, 0x4056800000000000L

    .line 44
    .local v0, max:D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double v6, v0, v2

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method public static getRandomPositiveLongitude()D
    .locals 8

    .prologue
    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .local v2, min:D
    const-wide v0, 0x4066800000000000L

    .line 52
    .local v0, max:D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double v6, v0, v2

    mul-double/2addr v4, v6

    return-wide v4
.end method

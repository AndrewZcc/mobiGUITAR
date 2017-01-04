.class public Lit/unina/androidripper/planning/sensors_utils/SensorValuesGenerator;
.super Ljava/lang/Object;
.source "SensorValuesGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAccelerometerValues()[F
    .locals 7

    .prologue
    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, min:F
    const v1, 0x419ce80a

    .line 55
    .local v1, max:F
    const/4 v2, 0x0

    .line 57
    .local v2, mid:F
    const/4 v4, 0x3

    new-array v0, v4, [F

    .line 58
    .local v0, f:[F
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 59
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 60
    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 62
    return-object v0
.end method

.method public static generateAmbientTemperatureValues()[F
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, min:F
    const/high16 v1, 0x4396

    .line 89
    .local v1, max:F
    const/high16 v2, 0x4316

    .line 91
    .local v2, mid:F
    const/4 v4, 0x3

    new-array v0, v4, [F

    .line 92
    .local v0, f:[F
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 95
    const/4 v4, 0x1

    aput v7, v0, v4

    .line 96
    const/4 v4, 0x2

    aput v7, v0, v4

    .line 98
    return-object v0
.end method

.method public static generateMagneticFieldValues()[F
    .locals 7

    .prologue
    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, min:F
    const/high16 v1, 0x4396

    .line 69
    .local v1, max:F
    const/4 v2, 0x0

    .line 71
    .local v2, mid:F
    const/4 v4, 0x3

    new-array v0, v4, [F

    .line 72
    .local v0, f:[F
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 73
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 74
    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 76
    return-object v0
.end method

.method public static generateOrientationValues()[F
    .locals 7

    .prologue
    .line 37
    const/4 v3, 0x0

    .line 38
    .local v3, min:F
    const/high16 v1, 0x43b4

    .line 39
    .local v1, max:F
    const/4 v2, 0x0

    .line 41
    .local v2, mid:F
    const/4 v4, 0x3

    new-array v0, v4, [F

    .line 42
    .local v0, f:[F
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 44
    const/4 v3, 0x0

    const/high16 v1, 0x41a0

    const/high16 v2, 0x4120

    .line 45
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 46
    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v6, v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    .line 48
    return-object v0
.end method

.method public static generateSensorValues(I)[F
    .locals 2
    .parameter "SENSOR_TYPE"

    .prologue
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 27
    :pswitch_0
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 28
    :goto_0
    return-object v0

    .line 15
    :pswitch_1
    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/SensorValuesGenerator;->generateAccelerometerValues()[F

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_2
    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/SensorValuesGenerator;->generateOrientationValues()[F

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_3
    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/SensorValuesGenerator;->generateMagneticFieldValues()[F

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_4
    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/SensorValuesGenerator;->generateTemperatureValues()[F

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 27
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static generateTemperatureValues()[F
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/SensorValuesGenerator;->generateAmbientTemperatureValues()[F

    move-result-object v0

    return-object v0
.end method

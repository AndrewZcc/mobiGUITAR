.class public Lit/unina/android/hardware/mock/MockSensorEventFactory;
.super Ljava/lang/Object;
.source "MockSensorEventFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAccelerometerAccuracyChangeEvent(I)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "accuracy"

    .prologue
    .line 22
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 23
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;I)V

    return-object v1
.end method

.method public static buildAccelerometerEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "f"

    .prologue
    .line 16
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 17
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v1
.end method

.method public static buildAccelerometerXYZEvent(FFF)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v3, 0x1

    .line 9
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v1

    .line 10
    .local v1, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    const/4 v2, 0x3

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput p0, v0, v2

    aput p1, v0, v3

    const/4 v2, 0x2

    aput p2, v0, v2

    .line 11
    .local v0, f:[F
    new-instance v2, Lit/unina/android/hardware/mock/MockSensorEvent;

    invoke-virtual {v1, v3}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v2
.end method

.method public static buildAmbientTemperatureEvent(I)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "accuracy"

    .prologue
    .line 113
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 114
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;I)V

    return-object v1
.end method

.method public static buildAmbientTemperatureEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "f"

    .prologue
    .line 107
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 108
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v1
.end method

.method public static buildAmbientTemperatureXYZEvent(FFF)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 100
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v1

    .line 101
    .local v1, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    const/4 v2, 0x3

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput p0, v0, v2

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 v2, 0x2

    aput p2, v0, v2

    .line 102
    .local v0, f:[F
    new-instance v2, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v2
.end method

.method public static buildMagneticFieldAccuracyChangeEvent(I)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "accuracy"

    .prologue
    .line 68
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 69
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;I)V

    return-object v1
.end method

.method public static buildMagneticFieldEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "f"

    .prologue
    .line 62
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 63
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v1
.end method

.method public static buildMagneticFieldXYZEvent(FFF)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v3, 0x2

    .line 55
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v1

    .line 56
    .local v1, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    const/4 v2, 0x3

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput p0, v0, v2

    const/4 v2, 0x1

    aput p1, v0, v2

    aput p2, v0, v3

    .line 57
    .local v0, f:[F
    new-instance v2, Lit/unina/android/hardware/mock/MockSensorEvent;

    invoke-virtual {v1, v3}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v2
.end method

.method public static buildOrientationAccuracyChangeEvent(I)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "accuracy"

    .prologue
    .line 45
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 46
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;I)V

    return-object v1
.end method

.method public static buildOrientationEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "f"

    .prologue
    .line 39
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 40
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v1
.end method

.method public static buildOrientationXYZEvent(FFF)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v3, 0x3

    .line 32
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v1

    .line 33
    .local v1, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-array v0, v3, [F

    const/4 v2, 0x0

    aput p0, v0, v2

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 v2, 0x2

    aput p2, v0, v2

    .line 34
    .local v0, f:[F
    new-instance v2, Lit/unina/android/hardware/mock/MockSensorEvent;

    invoke-virtual {v1, v3}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v2
.end method

.method public static buildTemperatureEvent(I)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "accuracy"

    .prologue
    .line 91
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 92
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;I)V

    return-object v1
.end method

.method public static buildTemperatureEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 3
    .parameter "f"

    .prologue
    .line 85
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    .line 86
    .local v0, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v1
.end method

.method public static buildTemperatureXYZEvent(FFF)Lit/unina/android/hardware/mock/MockSensorEvent;
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 78
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v1

    .line 79
    .local v1, sensorManager:Lit/unina/android/hardware/mock/MockSensorManager;
    const/4 v2, 0x3

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput p0, v0, v2

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 v2, 0x2

    aput p2, v0, v2

    .line 80
    .local v0, f:[F
    new-instance v2, Lit/unina/android/hardware/mock/MockSensorEvent;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[F)V

    return-object v2
.end method

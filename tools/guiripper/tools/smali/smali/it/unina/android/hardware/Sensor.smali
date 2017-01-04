.class public Lit/unina/android/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mockSensor:Lit/unina/android/hardware/mock/MockSensor;

.field private realSensor:Landroid/hardware/Sensor;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method protected constructor <init>(Landroid/hardware/Sensor;)V
    .locals 1
    .parameter "sensor"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    .line 127
    return-void
.end method

.method protected constructor <init>(Lit/unina/android/hardware/mock/MockSensor;)V
    .locals 1
    .parameter "sensor"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    .line 122
    return-void
.end method


# virtual methods
.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 183
    :cond_0
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v0}, Lit/unina/android/hardware/mock/MockSensor;->getMaximumRange()F

    move-result v0

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMockSensor()Lit/unina/android/hardware/mock/MockSensor;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v0}, Lit/unina/android/hardware/mock/MockSensor;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getPower()F

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v0}, Lit/unina/android/hardware/mock/MockSensor;->getPower()F

    move-result v0

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealSensor()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getResolution()F

    move-result v0

    .line 198
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v0}, Lit/unina/android/hardware/mock/MockSensor;->getResolution()F

    move-result v0

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v0}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v0

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v0}, Lit/unina/android/hardware/mock/MockSensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->realSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lit/unina/android/hardware/Sensor;->mockSensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v0}, Lit/unina/android/hardware/mock/MockSensor;->getVersion()I

    move-result v0

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

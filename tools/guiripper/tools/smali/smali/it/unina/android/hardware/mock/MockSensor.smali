.class public Lit/unina/android/hardware/mock/MockSensor;
.super Ljava/lang/Object;
.source "MockSensor.java"


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
.field private mHandle:I

.field private mLegacyType:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/high16 v1, 0x3f80

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, "Simulator"

    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mName:Ljava/lang/String;

    .line 130
    const-string v0, "Unina"

    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mVendor:Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mVersion:I

    .line 134
    iput v1, p0, Lit/unina/android/hardware/mock/MockSensor;->mMaxRange:F

    .line 135
    iput v1, p0, Lit/unina/android/hardware/mock/MockSensor;->mResolution:F

    .line 136
    iput v1, p0, Lit/unina/android/hardware/mock/MockSensor;->mPower:F

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mMinDelay:I

    .line 139
    iput p1, p0, Lit/unina/android/hardware/mock/MockSensor;->mType:I

    .line 141
    return-void
.end method


# virtual methods
.method getHandle()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mHandle:I

    return v0
.end method

.method getLegacyType()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mLegacyType:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lit/unina/android/hardware/mock/MockSensor;->mVersion:I

    return v0
.end method

.method setLegacyType(I)V
    .locals 0
    .parameter "legacyType"

    .prologue
    .line 211
    iput p1, p0, Lit/unina/android/hardware/mock/MockSensor;->mLegacyType:I

    .line 212
    return-void
.end method

.method setRange(FF)V
    .locals 0
    .parameter "max"
    .parameter "res"

    .prologue
    .line 206
    iput p1, p0, Lit/unina/android/hardware/mock/MockSensor;->mMaxRange:F

    .line 207
    iput p2, p0, Lit/unina/android/hardware/mock/MockSensor;->mResolution:F

    .line 208
    return-void
.end method

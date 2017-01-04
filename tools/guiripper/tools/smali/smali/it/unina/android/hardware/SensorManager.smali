.class public Lit/unina/android/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field private static final TAG:Ljava/lang/String; = "MySensorManager"

.field public static TESTING:Z

.field private static singleton:Lit/unina/android/hardware/SensorManager;


# instance fields
.field private context:Landroid/content/Context;

.field public listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/unina/android/hardware/SensorEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mockSensorManager:Lit/unina/android/hardware/mock/MockSensorManager;

.field private realSensorManager:Landroid/hardware/SensorManager;

.field private sensorsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lit/unina/android/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lit/unina/android/hardware/SensorManager;->TESTING:Z

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lit/unina/android/hardware/SensorManager;->sensorsList:Ljava/util/HashMap;

    .line 44
    iput-object v0, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lit/unina/android/hardware/SensorManager;->context:Landroid/content/Context;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lit/unina/android/hardware/SensorManager;->sensorsList:Ljava/util/HashMap;

    .line 52
    sget-boolean v0, Lit/unina/android/hardware/SensorManager;->TESTING:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    iput-object v0, p0, Lit/unina/android/hardware/SensorManager;->mockSensorManager:Lit/unina/android/hardware/mock/MockSensorManager;

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lit/unina/android/hardware/SensorManager;->realSensorManager:Landroid/hardware/SensorManager;

    goto :goto_0
.end method

.method public static getAltitude(FF)F
    .locals 1
    .parameter "p0"
    .parameter "p"

    .prologue
    .line 193
    invoke-static {p0, p1}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v0

    return v0
.end method

.method public static getAngleChange([F[F[F)V
    .locals 0
    .parameter "angleChange"
    .parameter "R"
    .parameter "prevR"

    .prologue
    .line 198
    invoke-static {p0, p1, p2}, Landroid/hardware/SensorManager;->getAngleChange([F[F[F)V

    .line 199
    return-void
.end method

.method public static getInclination([F)F
    .locals 1
    .parameter "I"

    .prologue
    .line 203
    invoke-static {p0}, Landroid/hardware/SensorManager;->getInclination([F)F

    move-result v0

    return v0
.end method

.method public static getInstance()Lit/unina/android/hardware/SensorManager;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lit/unina/android/hardware/SensorManager;->getInstance(Landroid/content/Context;)Lit/unina/android/hardware/SensorManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lit/unina/android/hardware/SensorManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    if-eqz p0, :cond_0

    sget-object v0, Lit/unina/android/hardware/SensorManager;->singleton:Lit/unina/android/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lit/unina/android/hardware/SensorManager;

    invoke-direct {v0, p0}, Lit/unina/android/hardware/SensorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lit/unina/android/hardware/SensorManager;->singleton:Lit/unina/android/hardware/SensorManager;

    .line 36
    :cond_0
    sget-object v0, Lit/unina/android/hardware/SensorManager;->singleton:Lit/unina/android/hardware/SensorManager;

    return-object v0
.end method

.method public static getOrientation([F[F)[F
    .locals 1
    .parameter "R"
    .parameter "values"

    .prologue
    .line 208
    invoke-static {p0, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 0
    .parameter "Q"
    .parameter "rv"

    .prologue
    .line 213
    invoke-static {p0, p1}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    .line 214
    return-void
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 1
    .parameter "R"
    .parameter "I"
    .parameter "gravity"
    .parameter "geomagnetic"

    .prologue
    .line 218
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    return v0
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 0
    .parameter "R"
    .parameter "rotationVector"

    .prologue
    .line 223
    invoke-static {p0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 224
    return-void
.end method

.method static remapCoordinateSystem([FII[F)Z
    .locals 1
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 228
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearSensorsList()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lit/unina/android/hardware/SensorManager;->sensorsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 187
    return-void
.end method

.method public getDefaultSensor(I)Lit/unina/android/hardware/Sensor;
    .locals 5
    .parameter "type"

    .prologue
    .line 157
    iget-object v3, p0, Lit/unina/android/hardware/SensorManager;->sensorsList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/android/hardware/Sensor;

    .line 159
    .local v1, ret:Lit/unina/android/hardware/Sensor;
    if-nez v1, :cond_0

    .line 161
    sget-boolean v3, Lit/unina/android/hardware/SensorManager;->TESTING:Z

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lit/unina/android/hardware/SensorManager;->mockSensorManager:Lit/unina/android/hardware/mock/MockSensorManager;

    invoke-virtual {v3, p1}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v0

    .line 164
    .local v0, mockSensor:Lit/unina/android/hardware/mock/MockSensor;
    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Lit/unina/android/hardware/Sensor;

    .end local v1           #ret:Lit/unina/android/hardware/Sensor;
    invoke-direct {v1, v0}, Lit/unina/android/hardware/Sensor;-><init>(Lit/unina/android/hardware/mock/MockSensor;)V

    .line 167
    .restart local v1       #ret:Lit/unina/android/hardware/Sensor;
    iget-object v3, p0, Lit/unina/android/hardware/SensorManager;->sensorsList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v0           #mockSensor:Lit/unina/android/hardware/mock/MockSensor;
    :cond_0
    :goto_0
    return-object v1

    .line 172
    :cond_1
    iget-object v3, p0, Lit/unina/android/hardware/SensorManager;->realSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 173
    .local v2, sensor:Landroid/hardware/Sensor;
    if-eqz v2, :cond_0

    .line 175
    new-instance v1, Lit/unina/android/hardware/Sensor;

    .end local v1           #ret:Lit/unina/android/hardware/Sensor;
    invoke-direct {v1, v2}, Lit/unina/android/hardware/Sensor;-><init>(Landroid/hardware/Sensor;)V

    .line 176
    .restart local v1       #ret:Lit/unina/android/hardware/Sensor;
    iget-object v3, p0, Lit/unina/android/hardware/SensorManager;->sensorsList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lit/unina/android/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lit/unina/android/hardware/Sensor;>;"
    sget-boolean v5, Lit/unina/android/hardware/SensorManager;->TESTING:Z

    if-eqz v5, :cond_2

    .line 141
    iget-object v5, p0, Lit/unina/android/hardware/SensorManager;->mockSensorManager:Lit/unina/android/hardware/mock/MockSensorManager;

    invoke-virtual {v5, p1}, Lit/unina/android/hardware/mock/MockSensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lit/unina/android/hardware/mock/MockSensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 152
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lit/unina/android/hardware/mock/MockSensor;>;"
    :cond_0
    return-object v3

    .line 142
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Lit/unina/android/hardware/mock/MockSensor;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/unina/android/hardware/mock/MockSensor;

    .line 143
    .local v2, mockSensor:Lit/unina/android/hardware/mock/MockSensor;
    invoke-virtual {v2}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v6

    invoke-virtual {p0, v6}, Lit/unina/android/hardware/SensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/Sensor;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lit/unina/android/hardware/mock/MockSensor;>;"
    .end local v2           #mockSensor:Lit/unina/android/hardware/mock/MockSensor;
    :cond_2
    iget-object v5, p0, Lit/unina/android/hardware/SensorManager;->realSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 149
    .local v4, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    invoke-virtual {p0, v6}, Lit/unina/android/hardware/SensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/Sensor;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public hasRegisteredSensorListener()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Lit/unina/android/hardware/SensorEventListener;Lit/unina/android/hardware/Sensor;I)Z
    .locals 3
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 60
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 75
    :goto_0
    return v1

    .line 63
    :cond_1
    new-instance v0, Lit/unina/android/hardware/SensorEventListenerDelegate;

    invoke-direct {v0, p1, p2, p3}, Lit/unina/android/hardware/SensorEventListenerDelegate;-><init>(Lit/unina/android/hardware/SensorEventListener;Lit/unina/android/hardware/Sensor;I)V

    .line 65
    .local v0, delegate:Lit/unina/android/hardware/SensorEventListenerDelegate;
    sget-boolean v1, Lit/unina/android/hardware/SensorManager;->TESTING:Z

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lit/unina/android/hardware/SensorManager;->mockSensorManager:Lit/unina/android/hardware/mock/MockSensorManager;

    invoke-virtual {p2}, Lit/unina/android/hardware/Sensor;->getMockSensor()Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Lit/unina/android/hardware/mock/MockSensorManager;->registerListener(Lit/unina/android/hardware/mock/MockSensorEventListener;Lit/unina/android/hardware/mock/MockSensor;I)Z

    .line 74
    :goto_1
    iget-object v1, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Lit/unina/android/hardware/SensorManager;->realSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p2}, Lit/unina/android/hardware/Sensor;->getRealSensor()Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1
.end method

.method public registerListener(Lit/unina/android/hardware/SensorEventListener;Lit/unina/android/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 1
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Lit/unina/android/hardware/SensorListener;I)Z
    .locals 1
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Lit/unina/android/hardware/SensorListener;II)Z
    .locals 1
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListener(Lit/unina/android/hardware/SensorEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 106
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 110
    .local v0, delegate:Lit/unina/android/hardware/SensorEventListenerDelegate;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 117
    if-eqz v0, :cond_0

    .line 119
    sget-boolean v2, Lit/unina/android/hardware/SensorManager;->TESTING:Z

    if-eqz v2, :cond_4

    .line 121
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->mockSensorManager:Lit/unina/android/hardware/mock/MockSensorManager;

    invoke-virtual {v2, v0}, Lit/unina/android/hardware/mock/MockSensorManager;->unregisterListener(Lit/unina/android/hardware/mock/MockSensorEventListener;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #delegate:Lit/unina/android/hardware/SensorEventListenerDelegate;
    check-cast v0, Lit/unina/android/hardware/SensorEventListenerDelegate;

    .line 113
    .restart local v0       #delegate:Lit/unina/android/hardware/SensorEventListenerDelegate;
    invoke-virtual {v0}, Lit/unina/android/hardware/SensorEventListenerDelegate;->getListener()Lit/unina/android/hardware/SensorEventListener;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 114
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_4
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->realSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public unregisterListener(Lit/unina/android/hardware/SensorEventListener;Lit/unina/android/hardware/Sensor;)V
    .locals 4
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    .line 84
    .local v0, delegate:Lit/unina/android/hardware/SensorEventListenerDelegate;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 91
    if-eqz v0, :cond_0

    .line 93
    sget-boolean v2, Lit/unina/android/hardware/SensorManager;->TESTING:Z

    if-eqz v2, :cond_4

    .line 95
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->mockSensorManager:Lit/unina/android/hardware/mock/MockSensorManager;

    invoke-virtual {p2}, Lit/unina/android/hardware/Sensor;->getMockSensor()Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lit/unina/android/hardware/mock/MockSensorManager;->unregisterListener(Lit/unina/android/hardware/mock/MockSensorEventListener;Lit/unina/android/hardware/mock/MockSensor;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #delegate:Lit/unina/android/hardware/SensorEventListenerDelegate;
    check-cast v0, Lit/unina/android/hardware/SensorEventListenerDelegate;

    .line 87
    .restart local v0       #delegate:Lit/unina/android/hardware/SensorEventListenerDelegate;
    invoke-virtual {v0}, Lit/unina/android/hardware/SensorEventListenerDelegate;->getListener()Lit/unina/android/hardware/SensorEventListener;

    move-result-object v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v0}, Lit/unina/android/hardware/SensorEventListenerDelegate;->getSensor()Lit/unina/android/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Lit/unina/android/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {p2}, Lit/unina/android/hardware/Sensor;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 88
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_4
    iget-object v2, p0, Lit/unina/android/hardware/SensorManager;->realSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p2}, Lit/unina/android/hardware/Sensor;->getRealSensor()Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public unregisterListener(Lit/unina/android/hardware/SensorListener;)V
    .locals 0
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    return-void
.end method

.method public unregisterListener(Lit/unina/android/hardware/SensorListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    return-void
.end method

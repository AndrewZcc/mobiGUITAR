.class public Lit/unina/android/hardware/mock/MockSensorManager;
.super Ljava/lang/Object;
.source "MockSensorManager.java"


# static fields
.field public static ACCELEROMETER_ENABLED:Z = false

.field public static AMBIENT_TEMPERATURE_ENABLED:Z = false

.field public static MAGNETIC_FIELD_ENABLED:Z = false

.field public static ORIENTATION_ENABLED:Z = false

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SensorManagerMock"

.field public static TEMPERATURE_ENABLED:Z

.field private static singleton:Lit/unina/android/hardware/mock/MockSensorManager;


# instance fields
.field public listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private sensorsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lit/unina/android/hardware/mock/MockSensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lit/unina/android/hardware/mock/MockSensorManager;->ACCELEROMETER_ENABLED:Z

    .line 25
    sput-boolean v0, Lit/unina/android/hardware/mock/MockSensorManager;->ORIENTATION_ENABLED:Z

    .line 26
    sput-boolean v0, Lit/unina/android/hardware/mock/MockSensorManager;->MAGNETIC_FIELD_ENABLED:Z

    .line 27
    sput-boolean v0, Lit/unina/android/hardware/mock/MockSensorManager;->AMBIENT_TEMPERATURE_ENABLED:Z

    .line 28
    sput-boolean v0, Lit/unina/android/hardware/mock/MockSensorManager;->TEMPERATURE_ENABLED:Z

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensorManager;->sensorsList:Ljava/util/HashMap;

    .line 46
    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensorManager;->sensorsList:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public static getInstance()Lit/unina/android/hardware/mock/MockSensorManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lit/unina/android/hardware/mock/MockSensorManager;->singleton:Lit/unina/android/hardware/mock/MockSensorManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lit/unina/android/hardware/mock/MockSensorManager;

    invoke-direct {v0}, Lit/unina/android/hardware/mock/MockSensorManager;-><init>()V

    sput-object v0, Lit/unina/android/hardware/mock/MockSensorManager;->singleton:Lit/unina/android/hardware/mock/MockSensorManager;

    .line 42
    :cond_0
    sget-object v0, Lit/unina/android/hardware/mock/MockSensorManager;->singleton:Lit/unina/android/hardware/mock/MockSensorManager;

    return-object v0
.end method


# virtual methods
.method public clearSensorsList()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lit/unina/android/hardware/mock/MockSensorManager;->sensorsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 140
    return-void
.end method

.method public getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;
    .locals 3
    .parameter "type"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 118
    .local v0, ret:Lit/unina/android/hardware/mock/MockSensor;
    sget-boolean v1, Lit/unina/android/hardware/mock/MockSensorManager;->ACCELEROMETER_ENABLED:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    .line 119
    :cond_0
    sget-boolean v1, Lit/unina/android/hardware/mock/MockSensorManager;->ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    .line 120
    :cond_1
    sget-boolean v1, Lit/unina/android/hardware/mock/MockSensorManager;->MAGNETIC_FIELD_ENABLED:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    .line 121
    :cond_2
    sget-boolean v1, Lit/unina/android/hardware/mock/MockSensorManager;->TEMPERATURE_ENABLED:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_4

    .line 122
    :cond_3
    sget-boolean v1, Lit/unina/android/hardware/mock/MockSensorManager;->AMBIENT_TEMPERATURE_ENABLED:Z

    if-eqz v1, :cond_5

    const/16 v1, 0xd

    if-ne p1, v1, :cond_5

    .line 125
    :cond_4
    iget-object v1, p0, Lit/unina/android/hardware/mock/MockSensorManager;->sensorsList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ret:Lit/unina/android/hardware/mock/MockSensor;
    check-cast v0, Lit/unina/android/hardware/mock/MockSensor;

    .line 127
    .restart local v0       #ret:Lit/unina/android/hardware/mock/MockSensor;
    if-nez v0, :cond_5

    .line 129
    new-instance v0, Lit/unina/android/hardware/mock/MockSensor;

    .end local v0           #ret:Lit/unina/android/hardware/mock/MockSensor;
    invoke-direct {v0, p1}, Lit/unina/android/hardware/mock/MockSensor;-><init>(I)V

    .line 130
    .restart local v0       #ret:Lit/unina/android/hardware/mock/MockSensor;
    iget-object v1, p0, Lit/unina/android/hardware/mock/MockSensorManager;->sensorsList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_5
    return-object v0
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lit/unina/android/hardware/mock/MockSensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v1, sensors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lit/unina/android/hardware/mock/MockSensor;>;"
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 95
    invoke-virtual {p0, p1}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v0

    .line 96
    .local v0, m:Lit/unina/android/hardware/mock/MockSensor;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v0           #m:Lit/unina/android/hardware/mock/MockSensor;
    :cond_0
    :goto_0
    return-object v1

    .line 102
    :cond_1
    sget-boolean v2, Lit/unina/android/hardware/mock/MockSensorManager;->ACCELEROMETER_ENABLED:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    sget-boolean v2, Lit/unina/android/hardware/mock/MockSensorManager;->ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    sget-boolean v2, Lit/unina/android/hardware/mock/MockSensorManager;->MAGNETIC_FIELD_ENABLED:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    sget-boolean v2, Lit/unina/android/hardware/mock/MockSensorManager;->TEMPERATURE_ENABLED:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_5
    sget-boolean v2, Lit/unina/android/hardware/mock/MockSensorManager;->AMBIENT_TEMPERATURE_ENABLED:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lit/unina/android/hardware/mock/MockSensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerListener(Lit/unina/android/hardware/mock/MockSensorEventListener;Lit/unina/android/hardware/mock/MockSensor;I)Z
    .locals 2
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v0, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    new-instance v1, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;

    invoke-direct {v1, p1, p2, p3}, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;-><init>(Lit/unina/android/hardware/mock/MockSensorEventListener;Lit/unina/android/hardware/mock/MockSensor;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public riseAccuracyEvent(Lit/unina/android/hardware/mock/MockSensor;I)V
    .locals 4
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    const-string v1, "SensorManagerMock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENSOR_ACCURACY_EVENT [Sensor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lit/unina/android/hardware/mock/MockSensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][accuracy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    iget-object v1, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    return-void

    .line 166
    :cond_0
    const-string v1, "SensorManagerMock"

    const-string v2, "SENSOR_ACCURACY_EVENT: event with no sensor!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;

    .line 169
    .local v0, l:Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;
    invoke-virtual {v0, p1, p2}, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->riseAccuracyEvent(Lit/unina/android/hardware/mock/MockSensor;I)V

    goto :goto_1
.end method

.method public riseSensorEvent(Lit/unina/android/hardware/mock/MockSensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x3

    .line 145
    if-eqz p1, :cond_1

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    if-eqz v1, :cond_1

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    array-length v1, v1

    if-ne v1, v2, :cond_1

    .line 146
    const-string v1, "SensorManagerMock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENSOR_EVENT [Sensor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v3}, Lit/unina/android/hardware/mock/MockSensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][values={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    if-eqz p1, :cond_0

    .line 157
    iget-object v1, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 159
    :cond_0
    return-void

    .line 147
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    if-eqz v1, :cond_2

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    array-length v1, v1

    if-ge v1, v2, :cond_2

    .line 148
    const-string v1, "SensorManagerMock"

    const-string v2, "SENSOR_EVENT: event with incorrect values[] length!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    if-nez v1, :cond_3

    .line 150
    const-string v1, "SensorManagerMock"

    const-string v2, "SENSOR_EVENT: event with no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    if-nez v1, :cond_4

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    if-eqz v1, :cond_4

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    array-length v1, v1

    if-ne v1, v2, :cond_4

    .line 152
    const-string v1, "SensorManagerMock"

    const-string v2, "SENSOR_EVENT: event with no sensor!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_4
    const-string v1, "SensorManagerMock"

    const-string v2, "SENSOR_EVENT: null event!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;

    .line 158
    .local v0, l:Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;
    invoke-virtual {v0, p1}, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->riseEvent(Lit/unina/android/hardware/mock/MockSensorEvent;)V

    goto :goto_1
.end method

.method public unregisterListener(Lit/unina/android/hardware/mock/MockSensorEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 87
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 83
    iget-object v2, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;

    .line 84
    .local v1, l:Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;
    invoke-virtual {v1}, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->getListener()Lit/unina/android/hardware/mock/MockSensorEventListener;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 85
    iget-object v2, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterListener(Lit/unina/android/hardware/mock/MockSensorEventListener;Lit/unina/android/hardware/mock/MockSensor;)V
    .locals 4
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 74
    :cond_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 70
    iget-object v2, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;

    .line 71
    .local v1, l:Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;
    invoke-virtual {v1}, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->getListener()Lit/unina/android/hardware/mock/MockSensorEventListener;

    move-result-object v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1}, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->getSensor()Lit/unina/android/hardware/mock/MockSensor;

    move-result-object v2

    invoke-virtual {v2}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v2

    invoke-virtual {p2}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 72
    iget-object v2, p0, Lit/unina/android/hardware/mock/MockSensorManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

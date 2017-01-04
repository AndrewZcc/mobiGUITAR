.class public Lit/unina/android/hardware/SensorEvent;
.super Ljava/lang/Object;
.source "SensorEvent.java"


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "dd-MM-yyyy HH:mm:ss"


# instance fields
.field public accuracy:I

.field public sensor:Lit/unina/android/hardware/Sensor;

.field public time:Ljava/lang/String;

.field public timestamp:J

.field public type:I

.field public values:[F


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->values:[F

    .line 37
    new-array v0, p1, [F

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->values:[F

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->time:Ljava/lang/String;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/unina/android/hardware/SensorEvent;->timestamp:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lit/unina/android/hardware/SensorEvent;->values:[F

    .line 44
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->values:[F

    .line 46
    invoke-static {}, Lit/unina/android/hardware/SensorManager;->getInstance()Lit/unina/android/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lit/unina/android/hardware/SensorManager;->getInstance()Lit/unina/android/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lit/unina/android/hardware/SensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->sensor:Lit/unina/android/hardware/Sensor;

    .line 51
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->time:Ljava/lang/String;

    .line 52
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lit/unina/android/hardware/SensorEvent;->timestamp:J

    .line 53
    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v0, p0, Lit/unina/android/hardware/SensorEvent;->accuracy:I

    .line 54
    return-void

    .line 49
    :cond_0
    iput-object v1, p0, Lit/unina/android/hardware/SensorEvent;->sensor:Lit/unina/android/hardware/Sensor;

    goto :goto_0
.end method

.method public constructor <init>(Lit/unina/android/hardware/Sensor;I)V
    .locals 1
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lit/unina/android/hardware/SensorEvent;-><init>(Lit/unina/android/hardware/Sensor;[FI)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lit/unina/android/hardware/Sensor;[F)V
    .locals 1
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lit/unina/android/hardware/SensorEvent;-><init>(Lit/unina/android/hardware/Sensor;[FI)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lit/unina/android/hardware/Sensor;[FI)V
    .locals 2
    .parameter "sensor"
    .parameter "values"
    .parameter "accuracy"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->values:[F

    .line 30
    iput-object p2, p0, Lit/unina/android/hardware/SensorEvent;->values:[F

    .line 31
    iput-object p1, p0, Lit/unina/android/hardware/SensorEvent;->sensor:Lit/unina/android/hardware/Sensor;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->time:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/unina/android/hardware/SensorEvent;->timestamp:J

    .line 34
    return-void
.end method

.method public constructor <init>(Lit/unina/android/hardware/mock/MockSensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lit/unina/android/hardware/SensorEvent;->values:[F

    .line 58
    iget-object v0, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->values:[F

    .line 60
    invoke-static {}, Lit/unina/android/hardware/SensorManager;->getInstance()Lit/unina/android/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lit/unina/android/hardware/SensorManager;->getInstance()Lit/unina/android/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v1}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lit/unina/android/hardware/SensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->sensor:Lit/unina/android/hardware/Sensor;

    .line 65
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lit/unina/android/hardware/SensorEvent;->time:Ljava/lang/String;

    .line 66
    iget-wide v0, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->timestamp:J

    iput-wide v0, p0, Lit/unina/android/hardware/SensorEvent;->timestamp:J

    .line 67
    iget v0, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->accuracy:I

    iput v0, p0, Lit/unina/android/hardware/SensorEvent;->accuracy:I

    .line 68
    return-void

    .line 63
    :cond_0
    iput-object v1, p0, Lit/unina/android/hardware/SensorEvent;->sensor:Lit/unina/android/hardware/Sensor;

    goto :goto_0
.end method

.class public Lit/unina/android/hardware/mock/MockSensorEvent;
.super Ljava/lang/Object;
.source "MockSensorEvent.java"


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "dd-MM-yyyy HH:mm:ss"


# instance fields
.field public accuracy:I

.field public sensor:Lit/unina/android/hardware/mock/MockSensor;

.field public time:Ljava/lang/String;

.field public timestamp:J

.field public values:[F


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    .line 38
    new-array v0, p1, [F

    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensorEvent;->time:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/unina/android/hardware/mock/MockSensorEvent;->timestamp:J

    .line 41
    return-void
.end method

.method public constructor <init>(Lit/unina/android/hardware/mock/MockSensor;I)V
    .locals 1
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[FI)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lit/unina/android/hardware/mock/MockSensor;[F)V
    .locals 1
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lit/unina/android/hardware/mock/MockSensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensor;[FI)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lit/unina/android/hardware/mock/MockSensor;[FI)V
    .locals 2
    .parameter "sensor"
    .parameter "values"
    .parameter "accuracy"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    .line 31
    iput-object p2, p0, Lit/unina/android/hardware/mock/MockSensorEvent;->values:[F

    .line 32
    iput-object p1, p0, Lit/unina/android/hardware/mock/MockSensorEvent;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lit/unina/android/hardware/mock/MockSensorEvent;->time:Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/unina/android/hardware/mock/MockSensorEvent;->timestamp:J

    .line 35
    return-void
.end method

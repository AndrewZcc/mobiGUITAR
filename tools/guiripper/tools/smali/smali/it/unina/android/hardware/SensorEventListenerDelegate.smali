.class public Lit/unina/android/hardware/SensorEventListenerDelegate;
.super Ljava/lang/Object;
.source "SensorEventListenerDelegate.java"

# interfaces
.implements Lit/unina/android/hardware/mock/MockSensorEventListener;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field listener:Lit/unina/android/hardware/SensorEventListener;

.field sensor:Lit/unina/android/hardware/Sensor;


# direct methods
.method public constructor <init>(Lit/unina/android/hardware/SensorEventListener;Lit/unina/android/hardware/Sensor;I)V
    .locals 0
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lit/unina/android/hardware/SensorEventListenerDelegate;->listener:Lit/unina/android/hardware/SensorEventListener;

    .line 15
    iput-object p2, p0, Lit/unina/android/hardware/SensorEventListenerDelegate;->sensor:Lit/unina/android/hardware/Sensor;

    .line 16
    return-void
.end method


# virtual methods
.method public getListener()Lit/unina/android/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lit/unina/android/hardware/SensorEventListenerDelegate;->listener:Lit/unina/android/hardware/SensorEventListener;

    return-object v0
.end method

.method public getSensor()Lit/unina/android/hardware/Sensor;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lit/unina/android/hardware/SensorEventListenerDelegate;->sensor:Lit/unina/android/hardware/Sensor;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 55
    invoke-static {}, Lit/unina/android/hardware/SensorManager;->getInstance()Lit/unina/android/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lit/unina/android/hardware/SensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/Sensor;

    move-result-object v0

    .line 56
    .local v0, s:Lit/unina/android/hardware/Sensor;
    invoke-virtual {p0, v0, p2}, Lit/unina/android/hardware/SensorEventListenerDelegate;->riseAccuracyEvent(Lit/unina/android/hardware/Sensor;I)V

    .line 57
    return-void
.end method

.method public onAccuracyChanged(Lit/unina/android/hardware/mock/MockSensor;I)V
    .locals 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 67
    invoke-static {}, Lit/unina/android/hardware/SensorManager;->getInstance()Lit/unina/android/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {p1}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lit/unina/android/hardware/SensorManager;->getDefaultSensor(I)Lit/unina/android/hardware/Sensor;

    move-result-object v0

    .line 68
    .local v0, s:Lit/unina/android/hardware/Sensor;
    invoke-virtual {p0, v0, p2}, Lit/unina/android/hardware/SensorEventListenerDelegate;->riseAccuracyEvent(Lit/unina/android/hardware/Sensor;I)V

    .line 69
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 61
    new-instance v0, Lit/unina/android/hardware/SensorEvent;

    invoke-direct {v0, p1}, Lit/unina/android/hardware/SensorEvent;-><init>(Landroid/hardware/SensorEvent;)V

    .line 62
    .local v0, evt:Lit/unina/android/hardware/SensorEvent;
    invoke-virtual {p0, v0}, Lit/unina/android/hardware/SensorEventListenerDelegate;->riseSensorEvent(Lit/unina/android/hardware/SensorEvent;)V

    .line 63
    return-void
.end method

.method public onSensorChanged(Lit/unina/android/hardware/mock/MockSensorEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 72
    new-instance v0, Lit/unina/android/hardware/SensorEvent;

    invoke-direct {v0, p1}, Lit/unina/android/hardware/SensorEvent;-><init>(Lit/unina/android/hardware/mock/MockSensorEvent;)V

    .line 73
    .local v0, evt:Lit/unina/android/hardware/SensorEvent;
    invoke-virtual {p0, v0}, Lit/unina/android/hardware/SensorEventListenerDelegate;->riseSensorEvent(Lit/unina/android/hardware/SensorEvent;)V

    .line 74
    return-void
.end method

.method public riseAccuracyEvent(Lit/unina/android/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 26
    invoke-virtual {p1}, Lit/unina/android/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p0, Lit/unina/android/hardware/SensorEventListenerDelegate;->sensor:Lit/unina/android/hardware/Sensor;

    invoke-virtual {v1}, Lit/unina/android/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lit/unina/android/hardware/SensorEventListenerDelegate;->listener:Lit/unina/android/hardware/SensorEventListener;

    invoke-interface {v0, p1, p2}, Lit/unina/android/hardware/SensorEventListener;->onAccuracyChanged(Lit/unina/android/hardware/Sensor;I)V

    .line 28
    :cond_0
    return-void
.end method

.method public riseSensorEvent(Lit/unina/android/hardware/SensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 20
    iget-object v0, p1, Lit/unina/android/hardware/SensorEvent;->sensor:Lit/unina/android/hardware/Sensor;

    invoke-virtual {v0}, Lit/unina/android/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p0, Lit/unina/android/hardware/SensorEventListenerDelegate;->sensor:Lit/unina/android/hardware/Sensor;

    invoke-virtual {v1}, Lit/unina/android/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lit/unina/android/hardware/SensorEventListenerDelegate;->listener:Lit/unina/android/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Lit/unina/android/hardware/SensorEventListener;->onSensorChanged(Lit/unina/android/hardware/SensorEvent;)V

    .line 22
    :cond_0
    return-void
.end method

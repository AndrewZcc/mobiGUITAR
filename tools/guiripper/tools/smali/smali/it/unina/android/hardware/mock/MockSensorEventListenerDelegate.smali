.class public Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;
.super Ljava/lang/Object;
.source "MockSensorEventListenerDelegate.java"


# static fields
.field private static DELAY_MS_FASTEST:I

.field private static DELAY_MS_GAME:I

.field private static DELAY_MS_NORMAL:I

.field private static DELAY_MS_UI:I


# instance fields
.field listener:Lit/unina/android/hardware/mock/MockSensorEventListener;

.field private mDelay:I

.field private mNextUpdateTime:J

.field sensor:Lit/unina/android/hardware/mock/MockSensor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->DELAY_MS_FASTEST:I

    .line 7
    const/16 v0, 0x14

    sput v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->DELAY_MS_GAME:I

    .line 8
    const/16 v0, 0x3c

    sput v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->DELAY_MS_UI:I

    .line 9
    const/16 v0, 0xc8

    sput v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->DELAY_MS_NORMAL:I

    .line 4
    return-void
.end method

.method public constructor <init>(Lit/unina/android/hardware/mock/MockSensorEventListener;Lit/unina/android/hardware/mock/MockSensor;I)V
    .locals 2
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->listener:Lit/unina/android/hardware/mock/MockSensorEventListener;

    .line 20
    iput-object p2, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    .line 23
    packed-switch p3, :pswitch_data_0

    .line 39
    sget v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->DELAY_MS_NORMAL:I

    iput v0, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->mDelay:I

    .line 42
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->mNextUpdateTime:J

    .line 43
    return-void

    .line 26
    :pswitch_0
    sget v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->DELAY_MS_FASTEST:I

    iput v0, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->mDelay:I

    goto :goto_0

    .line 30
    :pswitch_1
    sget v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->DELAY_MS_GAME:I

    iput v0, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->mDelay:I

    goto :goto_0

    .line 34
    :pswitch_2
    sget v0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->DELAY_MS_UI:I

    iput v0, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->mDelay:I

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getListener()Lit/unina/android/hardware/mock/MockSensorEventListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->listener:Lit/unina/android/hardware/mock/MockSensorEventListener;

    return-object v0
.end method

.method public getSensor()Lit/unina/android/hardware/mock/MockSensor;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    return-object v0
.end method

.method public riseAccuracyEvent(Lit/unina/android/hardware/mock/MockSensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 59
    invoke-virtual {p1}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v0

    iget-object v1, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v1}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->listener:Lit/unina/android/hardware/mock/MockSensorEventListener;

    invoke-interface {v0, p1, p2}, Lit/unina/android/hardware/mock/MockSensorEventListener;->onAccuracyChanged(Lit/unina/android/hardware/mock/MockSensor;I)V

    .line 61
    :cond_0
    return-void
.end method

.method public riseEvent(Lit/unina/android/hardware/mock/MockSensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 48
    iget-object v0, p1, Lit/unina/android/hardware/mock/MockSensorEvent;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v0}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v0

    iget-object v1, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->sensor:Lit/unina/android/hardware/mock/MockSensor;

    invoke-virtual {v1}, Lit/unina/android/hardware/mock/MockSensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lit/unina/android/hardware/mock/MockSensorEventListenerDelegate;->listener:Lit/unina/android/hardware/mock/MockSensorEventListener;

    invoke-interface {v0, p1}, Lit/unina/android/hardware/mock/MockSensorEventListener;->onSensorChanged(Lit/unina/android/hardware/mock/MockSensorEvent;)V

    .line 55
    :cond_0
    return-void
.end method

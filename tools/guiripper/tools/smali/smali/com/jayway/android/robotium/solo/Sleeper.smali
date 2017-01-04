.class Lcom/jayway/android/robotium/solo/Sleeper;
.super Ljava/lang/Object;
.source "Sleeper.java"


# instance fields
.field private final MINIPAUSE:I

.field private final PAUSE:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/jayway/android/robotium/solo/Sleeper;->PAUSE:I

    .line 6
    const/16 v0, 0x12c

    iput v0, p0, Lcom/jayway/android/robotium/solo/Sleeper;->MINIPAUSE:I

    return-void
.end method


# virtual methods
.method public sleep()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    .line 14
    return-void
.end method

.method public sleep(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 34
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sleepMini()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    .line 23
    return-void
.end method

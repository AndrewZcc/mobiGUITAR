.class public Lit/unina/androidripper/strategy/criteria/TimeElapsedPause;
.super Ljava/lang/Object;
.source "TimeElapsedPause.java"

# interfaces
.implements Lit/unina/androidripper/strategy/criteria/PauseCriteria;


# instance fields
.field private max:J

.field private start:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0xe10

    invoke-direct {p0, v0, v1}, Lit/unina/androidripper/strategy/criteria/TimeElapsedPause;-><init>(J)V

    .line 15
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "maxTime"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lit/unina/androidripper/strategy/criteria/TimeElapsedPause;->max:J

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/unina/androidripper/strategy/criteria/TimeElapsedPause;->start:J

    .line 20
    return-void
.end method


# virtual methods
.method public pause()Z
    .locals 6

    .prologue
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lit/unina/androidripper/strategy/criteria/TimeElapsedPause;->start:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 24
    .local v0, current:J
    const-string v2, "androidripper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check for pause. Time elapsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s; time limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lit/unina/androidripper/strategy/criteria/TimeElapsedPause;->max:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-wide v2, p0, Lit/unina/androidripper/strategy/criteria/TimeElapsedPause;->max:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 28
    return-void
.end method

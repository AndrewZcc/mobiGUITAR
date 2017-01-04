.class synthetic Lit/unina/androidripper/planning/TrivialScheduler$1;
.super Ljava/lang/Object;
.source "TrivialScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/unina/androidripper/planning/TrivialScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$it$unina$androidripper$planning$TraceDispatcher$SchedulerAlgorithm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->values()[Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lit/unina/androidripper/planning/TrivialScheduler$1;->$SwitchMap$it$unina$androidripper$planning$TraceDispatcher$SchedulerAlgorithm:[I

    :try_start_0
    sget-object v0, Lit/unina/androidripper/planning/TrivialScheduler$1;->$SwitchMap$it$unina$androidripper$planning$TraceDispatcher$SchedulerAlgorithm:[I

    sget-object v1, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->DEPTH_FIRST:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    invoke-virtual {v1}, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lit/unina/androidripper/planning/TrivialScheduler$1;->$SwitchMap$it$unina$androidripper$planning$TraceDispatcher$SchedulerAlgorithm:[I

    sget-object v1, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->BREADTH_FIRST:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    invoke-virtual {v1}, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

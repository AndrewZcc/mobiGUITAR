.class Lcom/jayway/android/robotium/solo/ActivityUtils$1;
.super Ljava/util/TimerTask;
.source "ActivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/android/robotium/solo/ActivityUtils;->setupActivityStackListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/ActivityUtils;


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/ActivityUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils$1;->this$0:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils$1;->this$0:Lcom/jayway/android/robotium/solo/ActivityUtils;

    #getter for: Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-static {v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->access$000(Lcom/jayway/android/robotium/solo/ActivityUtils;)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils$1;->this$0:Lcom/jayway/android/robotium/solo/ActivityUtils;

    #getter for: Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-static {v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->access$000(Lcom/jayway/android/robotium/solo/ActivityUtils;)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation$ActivityMonitor;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    .line 121
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils$1;->this$0:Lcom/jayway/android/robotium/solo/ActivityUtils;

    #getter for: Lcom/jayway/android/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->access$100(Lcom/jayway/android/robotium/solo/ActivityUtils;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils$1;->this$0:Lcom/jayway/android/robotium/solo/ActivityUtils;

    #getter for: Lcom/jayway/android/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->access$100(Lcom/jayway/android/robotium/solo/ActivityUtils;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils$1;->this$0:Lcom/jayway/android/robotium/solo/ActivityUtils;

    #getter for: Lcom/jayway/android/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->access$100(Lcom/jayway/android/robotium/solo/ActivityUtils;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils$1;->this$0:Lcom/jayway/android/robotium/solo/ActivityUtils;

    #calls: Lcom/jayway/android/robotium/solo/ActivityUtils;->removeActivityFromStack(Landroid/app/Activity;)V
    invoke-static {v1, v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->access$200(Lcom/jayway/android/robotium/solo/ActivityUtils;Landroid/app/Activity;)V

    .line 129
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils$1;->this$0:Lcom/jayway/android/robotium/solo/ActivityUtils;

    #calls: Lcom/jayway/android/robotium/solo/ActivityUtils;->addActivityToStack(Landroid/app/Activity;)V
    invoke-static {v1, v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->access$300(Lcom/jayway/android/robotium/solo/ActivityUtils;Landroid/app/Activity;)V

    goto :goto_0
.end method

.class Lcom/jayway/android/robotium/solo/Asserter;
.super Ljava/lang/Object;
.source "Asserter.java"


# instance fields
.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private final waiter:Lcom/jayway/android/robotium/solo/Waiter;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/Waiter;)V
    .locals 0
    .parameter "activityUtils"
    .parameter "waiter"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Asserter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 27
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Asserter;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    .line 28
    return-void
.end method


# virtual methods
.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, expectedClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Asserter;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForActivity(Ljava/lang/Class;)Z

    move-result v0

    .line 54
    .local v0, foundActivity:Z
    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Asserter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v2}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 6
    .parameter "message"
    .parameter
    .parameter "isNewInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, expectedClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v1, 0x0

    .line 85
    .local v1, found:Z
    invoke-virtual {p0, p1, p2}, Lcom/jayway/android/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Asserter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    .line 87
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Asserter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getAllOpenedActivities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Asserter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getAllOpenedActivities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, instanceString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v3           #instanceString:Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p1, v4, v5}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "name"

    .prologue
    .line 38
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Asserter;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForActivity(Ljava/lang/String;)Z

    move-result v0

    .line 40
    .local v0, foundActivity:Z
    if-nez v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Asserter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "name"
    .parameter "isNewInstance"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/jayway/android/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Asserter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/jayway/android/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 71
    return-void
.end method

.method public assertMemoryNotLow()V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 101
    .local v0, mi:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Asserter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Low memory available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

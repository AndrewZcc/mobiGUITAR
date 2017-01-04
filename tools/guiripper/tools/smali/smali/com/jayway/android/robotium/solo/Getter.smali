.class Lcom/jayway/android/robotium/solo/Getter;
.super Ljava/lang/Object;
.source "Getter.java"


# instance fields
.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private final instrumentation:Landroid/app/Instrumentation;

.field private final waiter:Lcom/jayway/android/robotium/solo/Waiter;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/Waiter;)V
    .locals 0
    .parameter "instrumentation"
    .parameter "activityUtils"
    .parameter "waiter"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Getter;->instrumentation:Landroid/app/Instrumentation;

    .line 35
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Getter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 36
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/Getter;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    .line 37
    return-void
.end method


# virtual methods
.method public getView(II)Landroid/view/View;
    .locals 4
    .parameter "id"
    .parameter "index"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Getter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    .line 81
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 83
    .local v1, viewToReturn:Landroid/view/View;
    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    .line 84
    const/4 p2, 0x0

    .line 85
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    :cond_0
    if-eqz v1, :cond_1

    .line 92
    .end local v1           #viewToReturn:Landroid/view/View;
    :goto_0
    return-object v1

    .restart local v1       #viewToReturn:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Getter;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v2, p1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(II)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getView(Ljava/lang/Class;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Getter;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p2, p1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Ljava/lang/String;I)Landroid/view/View;
    .locals 5
    .parameter "id"
    .parameter "index"

    .prologue
    .line 104
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Getter;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    .line 105
    .local v1, targetContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, p1, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 107
    .local v2, viewId:I
    invoke-virtual {p0, v2, p2}, Lcom/jayway/android/robotium/solo/Getter;->getView(II)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 10
    .parameter
    .parameter "text"
    .parameter "onlyVisible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .local p1, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Getter;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    int-to-long v4, v1

    move-object v1, p1

    move-object v2, p2

    move v6, v3

    move v7, p3

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v9

    .line 65
    .local v9, viewToReturn:Landroid/widget/TextView;,"TT;"
    if-nez v9, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with text: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 68
    :cond_0
    return-object v9
.end method

.class Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;
.super Ljava/lang/Object;
.source "Automation.java"

# interfaces
.implements Lit/unina/androidripper/model/ActivityDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/unina/androidripper/automation/Automation$TrivialExtractor;->describeActivity()Lit/unina/androidripper/model/ActivityDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;


# direct methods
.method constructor <init>(Lit/unina/androidripper/automation/Automation$TrivialExtractor;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v0}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v0}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetIndex(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 641
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v0, v0, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {v0}, Lit/unina/androidripper/automation/Automation;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public handlesKeyPress()Z
    .locals 3

    .prologue
    .line 733
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .line 735
    .local v0, a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->handlesKeyPress:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 737
    :cond_0
    new-instance v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .end local v0           #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    invoke-direct {v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;-><init>()V

    .line 738
    .restart local v0       #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onKeyDown"

    invoke-static {v1, v2}, Lit/unina/androidripper/helpers/ReflectionHelper;->hasDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->handlesKeyPress:Ljava/lang/Boolean;

    .line 741
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :cond_1
    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->handlesKeyPress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public handlesLongKeyPress()Z
    .locals 3

    .prologue
    .line 749
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .line 751
    .local v0, a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->handlesLongKeyPress:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 753
    :cond_0
    new-instance v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .end local v0           #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    invoke-direct {v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;-><init>()V

    .line 754
    .restart local v0       #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onKeyLongPress"

    invoke-static {v1, v2}, Lit/unina/androidripper/helpers/ReflectionHelper;->hasDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->handlesLongKeyPress:Ljava/lang/Boolean;

    .line 757
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_1
    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->handlesLongKeyPress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public hasMenu()Z
    .locals 3

    .prologue
    .line 699
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .line 701
    .local v0, a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->hasMenu:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 703
    :cond_0
    new-instance v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .end local v0           #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    invoke-direct {v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;-><init>()V

    .line 704
    .restart local v0       #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Lit/unina/androidripper/helpers/ReflectionHelper;->hasDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPrepareOptionsMenu"

    invoke-static {v1, v2}, Lit/unina/androidripper/helpers/ReflectionHelper;->hasDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->hasMenu:Ljava/lang/Boolean;

    .line 710
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_2
    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->hasMenu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 704
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasOnOptionsItemSelected()Z
    .locals 3

    .prologue
    .line 718
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .line 720
    .local v0, a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->hasOnOptionsItemSelected:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 722
    :cond_0
    new-instance v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .end local v0           #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    invoke-direct {v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;-><init>()V

    .line 723
    .restart local v0       #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lit/unina/androidripper/helpers/ReflectionHelper;->hasDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->hasOnOptionsItemSelected:Ljava/lang/Boolean;

    .line 725
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    :cond_1
    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->hasOnOptionsItemSelected:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isTabActivity()Z
    .locals 3

    .prologue
    .line 765
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .line 767
    .local v0, a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->isTabActivity:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 769
    :cond_0
    new-instance v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .end local v0           #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    invoke-direct {v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;-><init>()V

    .line 770
    .restart local v0       #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/app/TabActivity;

    invoke-static {v1, v2}, Lit/unina/androidripper/helpers/ReflectionHelper;->isDescendant(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->isTabActivity:Ljava/lang/Boolean;

    .line 771
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_1
    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->isTabActivity:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v0, v0, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {v0}, Lit/unina/androidripper/automation/Automation;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->getActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesLocationManager()Z
    .locals 3

    .prologue
    .line 679
    sget-boolean v1, Lit/unina/androidripper/planning/Resources;->USE_GPS:Z

    if-eqz v1, :cond_2

    .line 681
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .line 683
    .local v0, a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->usesLocation:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 685
    :cond_0
    new-instance v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .end local v0           #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    invoke-direct {v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;-><init>()V

    .line 686
    .restart local v0       #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.location.LocationListener"

    invoke-static {v1, v2}, Lit/unina/androidripper/helpers/ReflectionHelper;->scanClassForInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->usesLocation:Ljava/lang/Boolean;

    .line 687
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_1
    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->usesLocation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 693
    .end local v0           #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usesSensorsManager()Z
    .locals 3

    .prologue
    .line 659
    sget-boolean v1, Lit/unina/androidripper/planning/Resources;->USE_SENSORS:Z

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .line 663
    .local v0, a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->usesSensors:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 665
    :cond_0
    new-instance v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;

    .end local v0           #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    invoke-direct {v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;-><init>()V

    .line 666
    .restart local v0       #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "it.unina.android.hardware.SensorEventListener"

    invoke-static {v1, v2}, Lit/unina/androidripper/helpers/ReflectionHelper;->scanClassForInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->usesSensors:Ljava/lang/Boolean;

    .line 667
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    iget-object v1, v1, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    iget-object v2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-virtual {v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_1
    iget-object v1, v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->usesSensors:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 673
    .end local v0           #a:Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

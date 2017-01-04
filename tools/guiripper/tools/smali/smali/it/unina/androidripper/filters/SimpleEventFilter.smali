.class public Lit/unina/androidripper/filters/SimpleEventFilter;
.super Lit/unina/androidripper/filters/ButtonFilter;
.source "SimpleEventFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lit/unina/androidripper/filters/ButtonFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidItem(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 11
    invoke-super {p0, p1}, Lit/unina/androidripper/filters/ButtonFilter;->isValidItem(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/TabHost;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconMenuItemView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

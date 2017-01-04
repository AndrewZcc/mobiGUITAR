.class public Lit/unina/androidripper/filters/ButtonFilter;
.super Lit/unina/androidripper/filters/ArrayListFilter;
.source "ButtonFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lit/unina/androidripper/filters/ArrayListFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidItem(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 12
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lit/unina/androidripper/strategy/comparator/CustomWidgetsIntensiveComparator;
.super Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;
.source "CustomWidgetsIntensiveComparator.java"


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 0
    .parameter "ignore"
    .parameter "widgets"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;-><init>(Z[Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "widgets"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;-><init>([Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected matchWidget(Lcom/nofatclips/androidtesting/model/WidgetState;Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 4
    .parameter "campo"
    .parameter "altroCampo"

    .prologue
    const/4 v1, 0x1

    .line 19
    sget-boolean v2, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_VALUES:Z

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/WidgetState;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    .local v0, matchValue:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->matchWidget(Lcom/nofatclips/androidtesting/model/WidgetState;Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v1

    .end local v0           #matchValue:Z
    :cond_0
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    .restart local v0       #matchValue:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.class public Lcom/jayway/android/robotium/solo/RobotiumUtils;
.super Ljava/lang/Object;
.source "RobotiumUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterViews(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, viewList:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, filteredViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 52
    .local v2, view:Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v2           #view:Ljava/lang/Object;
    :cond_1
    const/4 p1, 0x0

    .line 57
    return-object v0
.end method

.method public static filterViewsByText(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "regex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->filterViewsByText(Ljava/lang/Iterable;Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filterViewsByText(Ljava/lang/Iterable;Ljava/util/regex/Pattern;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "regex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, filteredViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 166
    .local v2, view:Landroid/widget/TextView;,"TT;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v2           #view:Landroid/widget/TextView;,"TT;"
    :cond_1
    return-object v0
.end method

.method public static filterViewsToSet([Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, classSet:[Ljava/lang/Class;,"[Ljava/lang/Class<Landroid/view/View;>;"
    .local p1, viewList:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, filteredViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 71
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 73
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 74
    .local v1, filter:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v1           #filter:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #view:Landroid/view/View;
    :cond_2
    return-object v2
.end method

.method public static getNumberOfMatches(Ljava/lang/String;Landroid/widget/TextView;Ljava/util/Set;)I
    .locals 5
    .parameter "regex"
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/TextView;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, uniqueTextViews:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/TextView;>;"
    const/4 v2, 0x0

    .line 118
    .local v2, pattern:Ljava/util/regex/Pattern;
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 122
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 123
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    return v3

    .line 119
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    const/16 v3, 0x10

    invoke-static {p0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, viewList:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v1, tmpViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 34
    .local v2, view:Landroid/view/View;,"TT;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    .end local v2           #view:Landroid/view/View;,"TT;"
    :cond_1
    return-object v1
.end method

.method public static sortViewsByLocationOnScreen(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, views:Ljava/util/List;,"Ljava/util/List<+Landroid/view/View;>;"
    new-instance v0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;

    invoke-direct {v0}, Lcom/jayway/android/robotium/solo/ViewLocationComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    return-void
.end method

.method public static sortViewsByLocationOnScreen(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "yAxisFirst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, views:Ljava/util/List;,"Ljava/util/List<+Landroid/view/View;>;"
    new-instance v0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;

    invoke-direct {v0, p1}, Lcom/jayway/android/robotium/solo/ViewLocationComparator;-><init>(Z)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    return-void
.end method

.class Lcom/jayway/android/robotium/solo/ViewLocationComparator;
.super Ljava/lang/Object;
.source "ViewLocationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[I

.field private final axis1:I

.field private final axis2:I

.field private final b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/ViewLocationComparator;-><init>(Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "yAxisFirst"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->a:[I

    .line 14
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->b:[I

    .line 26
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis1:I

    .line 27
    if-eqz p1, :cond_1

    :goto_1
    iput v2, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis2:I

    .line 28
    return-void

    :cond_0
    move v0, v2

    .line 26
    goto :goto_0

    :cond_1
    move v2, v1

    .line 27
    goto :goto_1
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 31
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->a:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 32
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->b:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->a:[I

    iget v3, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis1:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->b:[I

    iget v4, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis1:I

    aget v3, v3, v4

    if-eq v2, v3, :cond_2

    .line 35
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->a:[I

    iget v3, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis1:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->b:[I

    iget v4, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis1:I

    aget v3, v3, v4

    if-ge v2, v3, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->a:[I

    iget v3, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis2:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->b:[I

    iget v4, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis2:I

    aget v3, v3, v4

    if-lt v2, v3, :cond_0

    .line 40
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->a:[I

    iget v2, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis2:I

    aget v0, v0, v2

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->b:[I

    iget v3, p0, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->axis2:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p1, Landroid/view/View;

    .end local p1
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jayway/android/robotium/solo/ViewLocationComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method

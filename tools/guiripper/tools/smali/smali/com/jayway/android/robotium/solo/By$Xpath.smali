.class Lcom/jayway/android/robotium/solo/By$Xpath;
.super Lcom/jayway/android/robotium/solo/By;
.source "By.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/android/robotium/solo/By;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Xpath"
.end annotation


# instance fields
.field private final xpath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "xpath"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/By;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/By$Xpath;->xpath:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/By$Xpath;->xpath:Ljava/lang/String;

    return-object v0
.end method

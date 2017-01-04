.class Lcom/jayway/android/robotium/solo/By$ClassName;
.super Lcom/jayway/android/robotium/solo/By;
.source "By.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/android/robotium/solo/By;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassName"
.end annotation


# instance fields
.field private final className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/By;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/By$ClassName;->className:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/By$ClassName;->className:Ljava/lang/String;

    return-object v0
.end method

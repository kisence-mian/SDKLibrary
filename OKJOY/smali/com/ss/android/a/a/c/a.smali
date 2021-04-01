.class public Lcom/ss/android/a/a/c/a;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/a/a/c/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/a/a/c/a$a;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/a/a/c/a;->b:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/ss/android/a/a/c/a$a;->a(Lcom/ss/android/a/a/c/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/a;->a:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/ss/android/a/a/c/a$a;->b(Lcom/ss/android/a/a/c/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/a;->b:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/ss/android/a/a/c/a$a;->c(Lcom/ss/android/a/a/c/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/a;->c:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/ss/android/a/a/c/a$a;->d(Lcom/ss/android/a/a/c/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/a;->d:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/ss/android/a/a/c/a$a;->e(Lcom/ss/android/a/a/c/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/a;->e:Ljava/lang/String;

    .line 23
    return-void
.end method

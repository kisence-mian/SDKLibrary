.class Lcom/ss/android/downloadlib/a/h$2;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/e/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/h;->b(Lcom/ss/android/a/a/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/a/n;

.field final synthetic b:Lcom/ss/android/downloadlib/a/h;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/h;Lcom/ss/android/a/a/a/n;)V
    .registers 3

    .prologue
    .line 254
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/h$2;->b:Lcom/ss/android/downloadlib/a/h;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a/h$2;->a:Lcom/ss/android/a/a/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h$2;->a:Lcom/ss/android/a/a/a/n;

    if-eqz v0, :cond_9

    .line 258
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h$2;->a:Lcom/ss/android/a/a/a/n;

    invoke-interface {v0}, Lcom/ss/android/a/a/a/n;->a()V

    .line 260
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h$2;->a:Lcom/ss/android/a/a/a/n;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h$2;->a:Lcom/ss/android/a/a/a/n;

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/n;->a(Ljava/lang/String;)V

    .line 267
    :cond_9
    return-void
.end method

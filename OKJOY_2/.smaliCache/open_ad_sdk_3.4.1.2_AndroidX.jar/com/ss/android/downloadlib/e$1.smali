.class Lcom/ss/android/downloadlib/e$1;
.super Ljava/lang/Object;
.source "DownloadConfigureImpl.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/e;->a(Lcom/ss/android/a/a/a/b;)Lcom/ss/android/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/a/b;

.field final synthetic b:Lcom/ss/android/downloadlib/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/e;Lcom/ss/android/a/a/a/b;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/ss/android/downloadlib/e$1;->b:Lcom/ss/android/downloadlib/e;

    iput-object p2, p0, Lcom/ss/android/downloadlib/e$1;->a:Lcom/ss/android/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/ss/android/downloadlib/e$1;->a:Lcom/ss/android/a/a/a/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/a/b;->a()Z

    move-result v0

    return v0
.end method

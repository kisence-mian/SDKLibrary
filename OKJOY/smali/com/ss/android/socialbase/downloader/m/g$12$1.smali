.class Lcom/ss/android/socialbase/downloader/m/g$12$1;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g$12;->a(Lcom/ss/android/socialbase/downloader/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/m/g$12;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 149
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$12$1;->b:Lcom/ss/android/socialbase/downloader/m/g$12;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/m/g$12$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12$1;->b:Lcom/ss/android/socialbase/downloader/m/g$12;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/m/g$12$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/d/w;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 153
    return-void
.end method

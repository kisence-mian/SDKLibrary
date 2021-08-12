.class Lcom/ss/android/downloadlib/g$1;
.super Ljava/lang/Object;
.source "TTDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/g;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/g;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/ss/android/downloadlib/g$1;->a:Lcom/ss/android/downloadlib/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 109
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Landroid/content/Context;)V

    .line 110
    return-void
.end method

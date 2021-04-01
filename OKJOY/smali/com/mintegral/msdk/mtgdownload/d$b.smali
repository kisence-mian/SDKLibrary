.class final Lcom/mintegral/msdk/mtgdownload/d$b;
.super Ljava/lang/Object;
.source "DownloadTaskList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/mintegral/msdk/mtgdownload/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lcom/mintegral/msdk/mtgdownload/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgdownload/d;-><init>(B)V

    sput-object v0, Lcom/mintegral/msdk/mtgdownload/d$b;->a:Lcom/mintegral/msdk/mtgdownload/d;

    return-void
.end method

.class final Lcom/mintegral/msdk/mtgdownload/e$b;
.super Ljava/lang/Object;
.source "DownloadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/mintegral/msdk/mtgdownload/k;

.field b:Lcom/mintegral/msdk/mtgdownload/e$a;

.field c:I

.field d:I

.field e:Lcom/mintegral/msdk/mtgdownload/b$a;

.field f:[J


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgdownload/b$a;I)V
    .registers 4

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$b;->f:[J

    .line 93
    iput p2, p0, Lcom/mintegral/msdk/mtgdownload/e$b;->c:I

    .line 94
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 95
    return-void
.end method

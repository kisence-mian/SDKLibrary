.class final Lcom/mintegral/msdk/mtgdownload/b$a;
.super Ljava/lang/Object;
.source "DownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:[Ljava/lang/String;

.field public j:[Ljava/lang/String;

.field public k:[Ljava/lang/String;

.field public l:[Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->g:[Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->h:[Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->i:[Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->j:[Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->k:[Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->l:[Ljava/lang/String;

    .line 295
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->m:Z

    .line 297
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->n:Z

    .line 299
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->o:Z

    .line 302
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->b:Ljava/lang/String;

    .line 303
    iput-object p2, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    .line 304
    iput-object p3, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    .line 305
    return-void
.end method

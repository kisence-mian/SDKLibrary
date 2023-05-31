.class final Lcom/mintegral/msdk/mtgdownload/d$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadTaskList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgdownload/d;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgdownload/d;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 262
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/d$a;->a:Lcom/mintegral/msdk/mtgdownload/d;

    .line 263
    const-string v0, "MTG_DATA"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 264
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 268
    invoke-static {}, Lcom/mintegral/msdk/mtgdownload/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CREATE TABLE mtg_download_task_list (cp TEXT, url TEXT, progress INTEGER, extra TEXT, last_modified TEXT, UNIQUE (cp,url) ON CONFLICT ABORT);"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "CREATE TABLE mtg_download_task_list (cp TEXT, url TEXT, progress INTEGER, extra TEXT, last_modified TEXT, UNIQUE (cp,url) ON CONFLICT ABORT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 274
    return-void
.end method

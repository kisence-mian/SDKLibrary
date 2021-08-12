.class public Lcom/bytedance/tea/crash/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NpthDbHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 24
    const-string v0, "npth_log.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 29
    new-instance v0, Lcom/bytedance/tea/crash/b/b/b;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/b/b/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/tea/crash/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 35
    return-void
.end method

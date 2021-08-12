.class public Lcom/ss/android/downloadlib/e/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ClickEventDBHelper.java"


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 30
    const-string v0, "_id"

    const-string v1, "ad_id"

    const-string v2, "req_id"

    const-string v3, "time"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 35
    const-string v0, "click_event"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 40
    nop

    .line 45
    const-string v0, "CREATE TABLE IF NOT EXISTS click_event(_id INTEGER PRIMARY KEY AUTOINCREMENT,ad_id INTEGER,req_id TEXT,time INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 50
    nop

    .line 51
    const-string p2, "DROP TABLE IF EXISTS click_event"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/e/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    return-void
.end method

.class public Lokjoy/f/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lokjoy/f/b;


# instance fields
.field public a:Lokjoy/f/a;

.field public b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokjoy/f/a;

    invoke-direct {v0, p1}, Lokjoy/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lokjoy/f/b;->a:Lokjoy/f/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lokjoy/f/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lokjoy/f/b;
    .registers 3

    if-nez p0, :cond_10

    invoke-static {}, Lcom/okjoy/okjoysdk/app/OkJoySdkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_10

    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getmActivity()Landroid/app/Activity;

    move-result-object p0

    :cond_10
    sget-object v0, Lokjoy/f/b;->c:Lokjoy/f/b;

    if-nez v0, :cond_2b

    const-class v0, Lokjoy/f/b;

    monitor-enter v0

    :try_start_17
    sget-object v1, Lokjoy/f/b;->c:Lokjoy/f/b;

    if-nez v1, :cond_26

    new-instance v1, Lokjoy/f/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lokjoy/f/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lokjoy/f/b;->c:Lokjoy/f/b;

    :cond_26
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_28

    throw p0

    :cond_2b
    :goto_2b
    sget-object p0, Lokjoy/f/b;->c:Lokjoy/f/b;

    return-object p0
.end method

.class final Lcom/mintegral/msdk/base/b/h$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CommonAbsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/b/h;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/b/h;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mintegral/msdk/base/b/h$a;->a:Lcom/mintegral/msdk/base/b/h;

    .line 43
    const/4 v0, 0x0

    const/16 v1, 0x2c

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/h$a;->a:Lcom/mintegral/msdk/base/b/h;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/b/h;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/h$a;->a:Lcom/mintegral/msdk/base/b/h;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/b/h;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/h$a;->a:Lcom/mintegral/msdk/base/b/h;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/b/h;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    return-void
.end method

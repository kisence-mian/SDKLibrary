.class final Lcom/tramini/plugin/a/b/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tramini/plugin/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/b/b;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/a/b/b;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 50
    iput-object p1, p0, Lcom/tramini/plugin/a/b/b$a;->a:Lcom/tramini/plugin/a/b/b;

    .line 51
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/tramini/plugin/a/b/b$a;->a:Lcom/tramini/plugin/a/b/b;

    invoke-virtual {v0, p1}, Lcom/tramini/plugin/a/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 66
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 61
    iget-object p2, p0, Lcom/tramini/plugin/a/b/b$a;->a:Lcom/tramini/plugin/a/b/b;

    invoke-virtual {p2, p1}, Lcom/tramini/plugin/a/b/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method

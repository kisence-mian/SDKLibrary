.class final Lcom/anythink/core/b/b/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/b/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/b/b;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 43
    iput-object p1, p0, Lcom/anythink/core/b/b/b$a;->a:Lcom/anythink/core/b/b/b;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/anythink/core/b/b/b$a;->a:Lcom/anythink/core/b/b/b;

    invoke-virtual {v0, p1}, Lcom/anythink/core/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/anythink/core/b/b/b$a;->a:Lcom/anythink/core/b/b/b;

    invoke-virtual {v0, p1}, Lcom/anythink/core/b/b/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anythink/core/b/b/b$a;->a:Lcom/anythink/core/b/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 55
    return-void
.end method

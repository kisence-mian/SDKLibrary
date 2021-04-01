.class Lcom/ss/android/downloadlib/a/b/e$2;
.super Ljava/lang/Object;
.source "SharedPrefsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/b/e;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/ss/android/downloadlib/a/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/b/e;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/b/e$2;->b:Lcom/ss/android/downloadlib/a/b/e;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a/b/e$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/e$2;->b:Lcom/ss/android/downloadlib/a/b/e;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/b/e;->a(Lcom/ss/android/downloadlib/a/b/e;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 134
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/e$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 137
    :cond_20
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    return-void
.end method

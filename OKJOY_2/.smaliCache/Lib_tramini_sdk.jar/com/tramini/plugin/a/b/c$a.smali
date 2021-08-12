.class public final Lcom/tramini/plugin/a/b/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tramini/plugin/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "il_all"

.field static final b:Ljava/lang/String; = "id"

.field static final c:Ljava/lang/String; = "value"

.field static final d:Ljava/lang/String; = "time"

.field static final e:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS il_all(id TEXT ,value TEXT ,time INTEGER)"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

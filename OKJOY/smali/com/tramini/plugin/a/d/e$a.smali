.class public final Lcom/tramini/plugin/a/d/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tramini/plugin/a/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1


# instance fields
.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/d/e$a;
    .registers 2

    .prologue
    .line 175
    new-instance v0, Lcom/tramini/plugin/a/d/e$a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/d/e$a;-><init>()V

    .line 176
    const/4 v1, 0x0

    iput v1, v0, Lcom/tramini/plugin/a/d/e$a;->d:I

    .line 178
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;
    .registers 3

    .prologue
    .line 159
    new-instance v0, Lcom/tramini/plugin/a/d/e$a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/d/e$a;-><init>()V

    .line 160
    const/4 v1, 0x1

    iput v1, v0, Lcom/tramini/plugin/a/d/e$a;->d:I

    .line 161
    iput-object p0, v0, Lcom/tramini/plugin/a/d/e$a;->e:Ljava/lang/Object;

    .line 163
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;
    .registers 3

    .prologue
    .line 167
    new-instance v0, Lcom/tramini/plugin/a/d/e$a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/d/e$a;-><init>()V

    .line 168
    const/4 v1, -0x1

    iput v1, v0, Lcom/tramini/plugin/a/d/e$a;->d:I

    .line 169
    iput-object p0, v0, Lcom/tramini/plugin/a/d/e$a;->e:Ljava/lang/Object;

    .line 171
    return-object v0
.end method

.class public final Lcom/tramini/plugin/a/e/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tramini/plugin/a/e/e;
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

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/e/e$a;
    .registers 2

    .line 185
    new-instance v0, Lcom/tramini/plugin/a/e/e$a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/e/e$a;-><init>()V

    .line 186
    const/4 v1, 0x0

    iput v1, v0, Lcom/tramini/plugin/a/e/e$a;->d:I

    .line 188
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;
    .registers 3

    .line 169
    new-instance v0, Lcom/tramini/plugin/a/e/e$a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/e/e$a;-><init>()V

    .line 170
    const/4 v1, 0x1

    iput v1, v0, Lcom/tramini/plugin/a/e/e$a;->d:I

    .line 171
    iput-object p0, v0, Lcom/tramini/plugin/a/e/e$a;->e:Ljava/lang/Object;

    .line 173
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;
    .registers 3

    .line 177
    new-instance v0, Lcom/tramini/plugin/a/e/e$a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/e/e$a;-><init>()V

    .line 178
    const/4 v1, -0x1

    iput v1, v0, Lcom/tramini/plugin/a/e/e$a;->d:I

    .line 179
    iput-object p0, v0, Lcom/tramini/plugin/a/e/e$a;->e:Ljava/lang/Object;

    .line 181
    return-object v0
.end method

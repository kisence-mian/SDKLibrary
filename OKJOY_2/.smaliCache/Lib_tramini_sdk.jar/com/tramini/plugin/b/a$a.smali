.class final Lcom/tramini/plugin/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tramini/plugin/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 169
    const-string v0, "si"

    sput-object v0, Lcom/tramini/plugin/b/a$a;->a:Ljava/lang/String;

    .line 170
    const-string v0, "scto"

    sput-object v0, Lcom/tramini/plugin/b/a$a;->b:Ljava/lang/String;

    .line 171
    const-string v0, "tf"

    sput-object v0, Lcom/tramini/plugin/b/a$a;->c:Ljava/lang/String;

    .line 172
    const-string v0, "nl"

    sput-object v0, Lcom/tramini/plugin/b/a$a;->d:Ljava/lang/String;

    .line 173
    const-string v0, "t_sw"

    sput-object v0, Lcom/tramini/plugin/b/a$a;->e:Ljava/lang/String;

    .line 174
    const-string v0, "pil"

    sput-object v0, Lcom/tramini/plugin/b/a$a;->f:Ljava/lang/String;

    .line 175
    const-string v0, "att_sw"

    sput-object v0, Lcom/tramini/plugin/b/a$a;->g:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 168
    sget-object v0, Lcom/tramini/plugin/b/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .line 168
    sget-object v0, Lcom/tramini/plugin/b/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .line 168
    sget-object v0, Lcom/tramini/plugin/b/a$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .line 168
    sget-object v0, Lcom/tramini/plugin/b/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    .line 168
    sget-object v0, Lcom/tramini/plugin/b/a$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .line 168
    sget-object v0, Lcom/tramini/plugin/b/a$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .line 168
    sget-object v0, Lcom/tramini/plugin/b/a$a;->f:Ljava/lang/String;

    return-object v0
.end method

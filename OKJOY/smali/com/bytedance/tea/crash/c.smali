.class public final enum Lcom/bytedance/tea/crash/c;
.super Ljava/lang/Enum;
.source "CrashType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/tea/crash/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/tea/crash/c;

.field public static final enum b:Lcom/bytedance/tea/crash/c;

.field public static final enum c:Lcom/bytedance/tea/crash/c;

.field public static final enum d:Lcom/bytedance/tea/crash/c;

.field public static final enum e:Lcom/bytedance/tea/crash/c;

.field public static final enum f:Lcom/bytedance/tea/crash/c;

.field public static final enum g:Lcom/bytedance/tea/crash/c;

.field public static final enum h:Lcom/bytedance/tea/crash/c;

.field public static final enum i:Lcom/bytedance/tea/crash/c;

.field private static final synthetic k:[Lcom/bytedance/tea/crash/c;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    invoke-direct {v0, v1, v4, v2}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->a:Lcom/bytedance/tea/crash/c;

    .line 14
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "JAVA"

    const-string v2, "java"

    invoke-direct {v0, v1, v5, v2}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    .line 18
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "NATIVE"

    const-string v2, "native"

    invoke-direct {v0, v1, v6, v2}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->c:Lcom/bytedance/tea/crash/c;

    .line 22
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "ANR"

    const-string v2, "anr"

    invoke-direct {v0, v1, v7, v2}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    .line 26
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "BLOCK"

    const-string v2, "block"

    invoke-direct {v0, v1, v8, v2}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->e:Lcom/bytedance/tea/crash/c;

    .line 30
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "ENSURE"

    const/4 v2, 0x5

    const-string v3, "ensure"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->f:Lcom/bytedance/tea/crash/c;

    .line 34
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "DART"

    const/4 v2, 0x6

    const-string v3, "dart"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->g:Lcom/bytedance/tea/crash/c;

    .line 38
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "CUSTOM_JAVA"

    const/4 v2, 0x7

    const-string v3, "custom_java"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->h:Lcom/bytedance/tea/crash/c;

    .line 42
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "ALL"

    const/16 v2, 0x8

    const-string v3, "all"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->i:Lcom/bytedance/tea/crash/c;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/bytedance/tea/crash/c;

    sget-object v1, Lcom/bytedance/tea/crash/c;->a:Lcom/bytedance/tea/crash/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/tea/crash/c;->c:Lcom/bytedance/tea/crash/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/tea/crash/c;->e:Lcom/bytedance/tea/crash/c;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bytedance/tea/crash/c;->f:Lcom/bytedance/tea/crash/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bytedance/tea/crash/c;->g:Lcom/bytedance/tea/crash/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bytedance/tea/crash/c;->h:Lcom/bytedance/tea/crash/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bytedance/tea/crash/c;->i:Lcom/bytedance/tea/crash/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/tea/crash/c;->k:[Lcom/bytedance/tea/crash/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/bytedance/tea/crash/c;->j:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/tea/crash/c;
    .registers 2

    .prologue
    .line 6
    const-class v0, Lcom/bytedance/tea/crash/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/c;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/tea/crash/c;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/bytedance/tea/crash/c;->k:[Lcom/bytedance/tea/crash/c;

    invoke-virtual {v0}, [Lcom/bytedance/tea/crash/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/tea/crash/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bytedance/tea/crash/c;->j:Ljava/lang/String;

    return-object v0
.end method

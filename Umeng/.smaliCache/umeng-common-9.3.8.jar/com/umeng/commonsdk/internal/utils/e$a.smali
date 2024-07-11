.class public final enum Lcom/umeng/commonsdk/internal/utils/e$a;
.super Ljava/lang/Enum;
.source "ExecShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/internal/utils/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/internal/utils/e$a;

.field private static final synthetic c:[Lcom/umeng/commonsdk/internal/utils/e$a;


# instance fields
.field b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 18
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/e$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/system/xbin/which"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "su"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "check_su_binary"

    invoke-direct {v0, v2, v3, v1}, Lcom/umeng/commonsdk/internal/utils/e$a;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/e$a;->a:Lcom/umeng/commonsdk/internal/utils/e$a;

    .line 17
    new-array v1, v4, [Lcom/umeng/commonsdk/internal/utils/e$a;

    aput-object v0, v1, v3

    sput-object v1, Lcom/umeng/commonsdk/internal/utils/e$a;->c:[Lcom/umeng/commonsdk/internal/utils/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/umeng/commonsdk/internal/utils/e$a;->b:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/internal/utils/e$a;
    .registers 2

    .line 17
    const-class v0, Lcom/umeng/commonsdk/internal/utils/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/internal/utils/e$a;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/internal/utils/e$a;
    .registers 1

    .line 17
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/e$a;->c:[Lcom/umeng/commonsdk/internal/utils/e$a;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/internal/utils/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/internal/utils/e$a;

    return-object v0
.end method

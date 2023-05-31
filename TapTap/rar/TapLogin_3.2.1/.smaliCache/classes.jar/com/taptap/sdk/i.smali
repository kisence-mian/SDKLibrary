.class Lcom/taptap/sdk/i;
.super Ljava/lang/Object;
.source "TapTapSharePreference.java"


# static fields
.field private static volatile b:Lcom/taptap/sdk/i;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taptap/sdk/i;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a()Lcom/taptap/sdk/i;
    .registers 1

    .line 4
    sget-object v0, Lcom/taptap/sdk/i;->b:Lcom/taptap/sdk/i;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/taptap/sdk/i;
    .registers 3

    .line 1
    const-string v0, "taptap_sharepreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/taptap/sdk/i;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/i;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/taptap/sdk/i;->b:Lcom/taptap/sdk/i;

    .line 3
    sget-object p0, Lcom/taptap/sdk/i;->b:Lcom/taptap/sdk/i;

    return-object p0
.end method


# virtual methods
.method public b()Landroid/content/SharedPreferences;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/i;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.class public final Lcom/iab/omid/library/mintegral/Omid;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcom/iab/omid/library/mintegral/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/mintegral/a;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/a;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mintegral/Omid;->INSTANCE:Lcom/iab/omid/library/mintegral/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateWithOmidApiVersion(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4

    sget-object v0, Lcom/iab/omid/library/mintegral/Omid;->INSTANCE:Lcom/iab/omid/library/mintegral/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/Omid;->INSTANCE:Lcom/iab/omid/library/mintegral/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isActive()Z
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/Omid;->INSTANCE:Lcom/iab/omid/library/mintegral/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/a;->b()Z

    move-result v0

    return v0
.end method

.method public static isCompatibleWithOmidApiVersion(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/iab/omid/library/mintegral/Omid;->INSTANCE:Lcom/iab/omid/library/mintegral/a;

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mintegral/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

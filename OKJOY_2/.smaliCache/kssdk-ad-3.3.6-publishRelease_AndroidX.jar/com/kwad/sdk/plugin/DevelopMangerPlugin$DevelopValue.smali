.class public Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/plugin/DevelopMangerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevelopValue"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x26c3e9a169c1abb8L


# instance fields
.field mValue:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;->mValue:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;->mValue:Ljava/io/Serializable;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

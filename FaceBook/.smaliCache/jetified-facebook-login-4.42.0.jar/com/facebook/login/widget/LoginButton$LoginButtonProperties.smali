.class Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
.super Ljava/lang/Object;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoginButtonProperties"
.end annotation


# instance fields
.field private authType:Ljava/lang/String;

.field private authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    .line 138
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 139
    const-string v0, "rerequest"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/LoginAuthorizationType;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 134
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 134
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearPermissions()V
    .registers 2

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 179
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    .line 180
    return-void
.end method

.method public getAuthType()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public setAuthType(Ljava/lang/String;)V
    .registers 2
    .param p1, "authType"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authType:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V
    .registers 2
    .param p1, "defaultAudience"    # Lcom/facebook/login/DefaultAudience;

    .line 142
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 143
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V
    .registers 2
    .param p1, "loginBehavior"    # Lcom/facebook/login/LoginBehavior;

    .line 183
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 184
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->READ:Lcom/facebook/internal/LoginAuthorizationType;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LoginAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 165
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 169
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 170
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    .line 171
    return-void

    .line 166
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Permissions for publish actions cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LoginAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 155
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 156
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->READ:Lcom/facebook/internal/LoginAuthorizationType;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    .line 157
    return-void

    .line 152
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lcom/oem/os/OnePlusNfcManager;
.super Ljava/lang/Object;
.source "OnePlusNfcManager.java"


# static fields
.field public static final CARD_TYPE_BJBUS:Ljava/lang/String; = "BeiJingBaShi"

.field public static final CARD_TYPE_LNT:Ljava/lang/String; = "LinNanTong"

.field public static final CARD_TYPE_SZT:Ljava/lang/String; = "ShenZhenTong"

.field public static final CARD_TYPE_YCT:Ljava/lang/String; = "YangChengTong"

.field public static final ONEPLUS_NFC_SERVICE:Ljava/lang/String; = "oneplus_nfc_service"

.field private static final TAG:Ljava/lang/String; = "OnePlusNfcManager"

.field private static sService:Lcom/oem/os/IOnePlusNfcService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static getService()Lcom/oem/os/IOnePlusNfcService;
    .locals 2

    .prologue
    .line 137
    sget-object v1, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    if-eqz v1, :cond_0

    .line 138
    sget-object v1, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    .line 142
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 140
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "OnePlusNfcService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 141
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oem/os/IOnePlusNfcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOnePlusNfcService;

    move-result-object v1

    sput-object v1, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    .line 142
    sget-object v1, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    goto :goto_0
.end method


# virtual methods
.method public applyConfig()Z
    .locals 3

    .prologue
    .line 125
    const-string v1, "OnePlusNfcManager"

    const-string v2, "[applyConfig]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOnePlusNfcService;->applyConfig()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportCardTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const-string v1, "OnePlusNfcManager"

    const-string v2, "[getSupportCardTypes]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOnePlusNfcService;->getSupportCardTypes()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportNfcConfigs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const-string v1, "OnePlusNfcManager"

    const-string v2, "[getSupportNfcConfigs]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOnePlusNfcService;->getSupportNfcConfigs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v1, "OnePlusNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCardType] type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/oem/os/IOnePlusNfcService;->setCardType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNfcConfig(Ljava/lang/String;)V
    .locals 4
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v1, "OnePlusNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setNfcConfig] config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/oem/os/IOnePlusNfcService;->setNfcConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSupportCardTypes(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "cardTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "OnePlusNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSupportCardTypes] cardTypes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/oem/os/IOnePlusNfcService;->setSupportCardTypes(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->updateDeviceName()V

    .line 126
    :cond_0
    return-void
.end method
